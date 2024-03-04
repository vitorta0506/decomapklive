.class Lorg/light/service/LightSDKService$LightSDKServiceBinder;
.super Lorg/light/ILightSDKServiceInterface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/service/LightSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LightSDKServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/service/LightSDKService;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-direct {p0}, Lorg/light/ILightSDKServiceInterface$Stub;-><init>()V

    const-string v0, "LightSDKService"

    const-string v1, "LightSDKServiceBinder() start"

    .line 2
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lorg/light/report/LightReportManager;->setCrossProcessMode(Z)V

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SDK process render thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1, v2}, Lorg/light/service/LightSDKService;->access$002(Lorg/light/service/LightSDKService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 7
    new-instance v1, Lorg/light/Lock;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/light/Lock;-><init>(I)V

    .line 8
    invoke-static {p1}, Lorg/light/service/LightSDKService;->access$000(Lorg/light/service/LightSDKService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$1;

    invoke-direct {v3, p0, p1, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$1;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/service/LightSDKService;Lorg/light/Lock;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    invoke-virtual {v1}, Lorg/light/Lock;->acquire()V

    .line 10
    invoke-static {p1}, Lorg/light/service/LightSDKService;->access$200(Lorg/light/service/LightSDKService;)Z

    const-string p1, "LightSDKServiceBinder() end"

    .line 11
    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->removeInstance(I)V

    return-void
.end method

.method static synthetic access$4000(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/AIDLVideoReader;)Lorg/light/ClipSourceFactory$VideoReader;
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->aidlCreateVideoReader(Lorg/light/AIDLVideoReader;)Lorg/light/ClipSourceFactory$VideoReader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/AIDLAudioReader;)Lorg/light/ClipSourceFactory$AudioReader;
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->aidlCreateAudioReader(Lorg/light/AIDLAudioReader;)Lorg/light/ClipSourceFactory$AudioReader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->getInstance(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/Object;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private aidlCreateAudioReader(Lorg/light/AIDLAudioReader;)Lorg/light/ClipSourceFactory$AudioReader;
    .locals 1

    new-instance v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;

    invoke-direct {v0, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/AIDLAudioReader;)V

    return-object v0
.end method

.method private aidlCreateVideoReader(Lorg/light/AIDLVideoReader;)Lorg/light/ClipSourceFactory$VideoReader;
    .locals 1

    new-instance v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$181;

    invoke-direct {v0, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$181;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/AIDLVideoReader;)V

    return-object v0
.end method

.method private getInstance(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$300(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LightSDKService"

    const-string v1, "getInstance() but instanceId does not exists!"

    .line 2
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$300(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private removeInstance(I)V
    .locals 1

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$300(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private saveInstance(Ljava/lang/Object;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$300(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method


# virtual methods
.method public audioOutputCopyNextSample(I)Lorg/light/AudioFrame;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->getInstance(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/AudioOutput;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/light/AudioOutput;->copyNextSample()Lorg/light/AudioFrame;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public audioOutputCopyNextSampleSyncEnable(IZ)Lorg/light/AudioFrame;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/AudioFrame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;

    invoke-direct {v3, p0, p1, v0, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/AudioFrame;Z)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public audioOutputRelease(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$120;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$120;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public audioOutputSeekTo(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$118;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$118;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IJ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraConfigCameraSwitched(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$21;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$21;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraConfigGetAbnormalFrameDetectResult(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$24;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$24;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    return-object p1
.end method

.method public cameraConfigMake()Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/CameraConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$15;

    invoke-direct {v4, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$15;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/CameraConfig;)V

    invoke-static {v3, v4}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 2
    new-instance v2, Lorg/light/service/InstanceId;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {v2, v0}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v2
.end method

.method public cameraConfigSensorOrientationChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$20;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$20;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraConfigSetAbnormalFrameDetectFrequency(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$23;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$23;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraConfigSetAutoTestMode(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$22;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$22;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IZ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraConfigSetCameraTexture(IIIILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v8, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move-object v4, p5

    move v5, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/os/ParcelFileDescriptor;III)V

    invoke-static {v0, p2, v8}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    return-void
.end method

.method public cameraConfigSetRawInputForAR(I[BIIJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    iget-object v9, v8, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v10, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[BIIJ)V

    invoke-static {v9, v10}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraConfigUpdateCameraTexture(IILandroid/hardware/HardwareBuffer;III)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    iget-object v9, v8, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v10, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move/from16 v3, p6

    move v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IIILandroid/hardware/HardwareBuffer;II)V

    move v0, p2

    invoke-static {v9, p2, v10}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerGetFilamentAssetPosition(ILorg/light/listener/AIDLFilaPositionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$164;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$164;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/listener/AIDLFilaPositionCallback;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerGetHitTestFilamentAssets(I[FLorg/light/listener/AIDLHitTestFilaCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$163;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$163;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[FLorg/light/listener/AIDLHitTestFilaCallback;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerPause3DAnimation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$157;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$157;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerRegister3DAnimation(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$159;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$159;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/util/List;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerRelease(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$150;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$150;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerResume3DAnimation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$158;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$158;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerRotateArModelToFront(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$161;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$161;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerSetARFrameInfo(ILorg/light/bean/ArFrameInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$155;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$155;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/bean/ArFrameInfo;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerSetHitTestAfterUnprojection(I[F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$160;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$160;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[F)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerSetSegmentationFastMode(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$156;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$156;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IZ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerSetUEFaceStr(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$165;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$165;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerUpdateTouchEvent(IIJJLjava/util/List;II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v11, p0

    iget-object v12, v11, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v13, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$151;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IIJJLjava/util/List;II)V

    invoke-static {v12, v13}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerUpdateTouchRotate(I[F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$153;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$153;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[F)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerUpdateTouchScale(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$154;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$154;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IF)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerUpdateViewParams(I[F[FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v7, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[F[FF)V

    invoke-static {v0, v7}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraControllerUpdateVoiceDecibel(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$152;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$152;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IF)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configAddExternalRenderCallback(ILjava/lang/String;Lorg/light/callback/AIDLExternalRenderCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Lorg/light/callback/AIDLExternalRenderCallback;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configCleanFileCacheForKey(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$70;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$70;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configClearAICachedData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$35;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$35;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configFreeCache(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$69;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$69;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configGetAIData(I[Ljava/lang/String;I)Lorg/light/bean/LightAIDataWrapper;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/bean/LightAIDataWrapper;

    const/4 v1, 0x0

    const/4 v7, 0x0

    aput-object v1, v0, v7

    iget-object v8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v9, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$47;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/bean/LightAIDataWrapper;[Ljava/lang/String;I)V

    invoke-static {v8, v9}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v7

    return-object p1
.end method

.method public configGetAssetDegradeFlag()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$73;

    invoke-direct {v3, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$73;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean v0, v0, v1

    return v0
.end method

.method public configGetConfigData(I)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$44;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$44;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Landroid/os/Bundle;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public configGetDisableRendererFlag(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$68;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$68;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public configGetFaceData(I)Lorg/light/bean/LightFaceData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/bean/LightFaceData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$46;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$46;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/bean/LightFaceData;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public configGetFaceFeature(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/light/bean/LightFaceFeature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$42;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$42;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/util/List;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public configGetPerformanceData(I)Lorg/light/PerformanceData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/PerformanceData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$66;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$66;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/PerformanceData;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public configGetPhonePrefLevel()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$72;

    invoke-direct {v3, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$72;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget v0, v0, v1

    return v0
.end method

.method public configOnPause(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$57;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$57;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configOnResume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$58;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$58;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configPerformFinalize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$75;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$75;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configRegisterFont(Lorg/light/FontAsset;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$54;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$54;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/FontAsset;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configRemoveExternalRenderCallback(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$41;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$41;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configReplaceAIData(ILorg/light/bean/LightAIDataWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$48;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$48;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/bean/LightAIDataWrapper;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetAIDataListener(ILorg/light/listener/AIDLOnAIDataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/listener/AIDLOnAIDataListener;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetAssetDowngradeFlag(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$74;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$74;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Z)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetBGMusicHidden(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$65;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$65;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IZ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetConfigData(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$33;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$33;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/os/Bundle;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetDefaultBeautyVersion(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$18;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$18;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetDelegateAgentRequestListener(ILorg/light/listener/AIDLOnDelegateAgentRequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$55;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$55;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/listener/AIDLOnDelegateAgentRequestListener;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetDelegateAgentResult(ILorg/light/bean/LightDelegateAgentRequest;ZLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v7, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/bean/LightDelegateAgentRequest;IZLjava/lang/String;)V

    invoke-static {v0, v7}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetDetectShorterEdgeLength(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$63;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$63;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetDisableRendererFlag(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$67;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$67;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IZ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetDowngradeStrategy(ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$64;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$64;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetExternalFaceData(ILorg/light/bean/LightFaceData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$43;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$43;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/bean/LightFaceData;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetExternalRenderCallback(ILorg/light/callback/AIDLExternalRenderCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/callback/AIDLExternalRenderCallback;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetHorizontalFov(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$45;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$45;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IF)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetLightAIModelPath(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$36;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$36;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetLightAIModelPathByAgentInfo(ILjava/lang/String;Lorg/light/bean/LightAgentBundleInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$37;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$37;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Lorg/light/bean/LightAgentBundleInfo;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetLightAIModelPathWithLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v7, Lorg/light/service/LightSDKService$LightSDKServiceBinder$38;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$38;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetLoadAssetListener(ILorg/light/listener/AIDLOnLoadAssetListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/listener/AIDLOnLoadAssetListener;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetOnClickWatermarkListener(ILorg/light/listener/AIDLOnClickWatermarkListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$49;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$49;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/listener/AIDLOnClickWatermarkListener;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetPreInitAgents(I[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$71;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$71;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetPredictNextFrame(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$61;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$61;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IZ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetPredictNextTime(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$62;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$62;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IJ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetRenderSize(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$34;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$34;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;III)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetSyncInitFlag(IZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$60;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$60;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IZLjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetSyncMode(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$59;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$59;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IZ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetTipsStatusListener(ILorg/light/listener/AIDLOnTipsStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$51;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/listener/AIDLOnTipsStatusListener;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public configSetWatermarkDataListener(ILjava/lang/String;Lorg/light/listener/AIDLOnWatermarkDataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Lorg/light/listener/AIDLOnWatermarkDataListener;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerAddComponent(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$133;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$133;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerAddComponentUpdateMonitor(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$137;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$137;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerAddEntity(IIILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v7, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IIILjava/lang/String;)V

    invoke-static {v0, v7}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerFetchComponent(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$135;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$135;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    return-object p1
.end method

.method public controllerGetAssetData(I)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$130;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$130;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Landroid/os/Bundle;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public controllerGetAudioPlaceHolders(I)[Lorg/light/AudioPlaceHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/AudioPlaceHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$122;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$122;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/AudioPlaceHolder;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public controllerGetBoundsByKey(ILjava/lang/String;)Landroid/graphics/RectF;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;

    invoke-direct {v3, p0, p1, v0, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$147;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Landroid/graphics/RectF;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public controllerGetEditableTextUnderPoint(IFF)Lorg/light/TextPlaceHolder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/TextPlaceHolder;

    const/4 v1, 0x0

    const/4 v7, 0x0

    aput-object v1, v0, v7

    iget-object v8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v9, Lorg/light/service/LightSDKService$LightSDKServiceBinder$126;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$126;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/TextPlaceHolder;FF)V

    invoke-static {v8, v9}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v7

    return-object p1
.end method

.method public controllerGetEditableWMItems(I)[Lorg/light/bean/WMElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/bean/WMElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$146;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/bean/WMElement;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public controllerGetEntitiesUnderPoint(IFF)[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v7, 0x0

    aput-object v1, v0, v7

    iget-object v8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v9, Lorg/light/service/LightSDKService$LightSDKServiceBinder$128;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$128;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[IFF)V

    invoke-static {v8, v9}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v7

    return-object p1
.end method

.method public controllerGetSoundEffectIDs(I)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$121;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$121;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Ljava/lang/String;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public controllerGetTextPlaceHolderByEntityId(II)[Lorg/light/TextPlaceHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/TextPlaceHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;

    invoke-direct {v3, p0, p1, v0, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$127;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/TextPlaceHolder;I)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public controllerGetTextPlaceHolders(I)[Lorg/light/TextPlaceHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/TextPlaceHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$123;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$123;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/TextPlaceHolder;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public controllerGetTimeLines(I)[Lorg/light/TimeLine;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/TimeLine;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$140;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$140;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/TimeLine;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public controllerHasAudio(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$144;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$144;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public controllerHasSpecificMakeUpType(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$149;

    invoke-direct {v3, p0, p1, v0, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$149;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[ZI)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public controllerRemoveComponent(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$134;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$134;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerRemoveComponentUpdateMonitor(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$138;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$138;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerRemoveEntity(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$143;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$143;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerReplaceAudioAsset(ILjava/lang/String;Lorg/light/AudioAsset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$129;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$129;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Lorg/light/AudioAsset;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerResetAsset(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$145;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$145;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerSetAssetData(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$131;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$131;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/os/Bundle;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerSetComponentUpdateCallback(ILorg/light/callback/AIDLComponentUpdateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/callback/AIDLComponentUpdateCallback;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerSetExternalAudioProcessor(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$148;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$148;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/os/Bundle;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerSetMaterialClipAssets(ILjava/lang/String;Landroid/os/Bundle;Lorg/light/AIDLFaceDetectCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v7, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$125;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/os/Bundle;Ljava/lang/String;Lorg/light/AIDLFaceDetectCallback;)V

    invoke-static {v0, v7}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerSetTextAsset(ILjava/lang/String;Lorg/light/TextAsset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$124;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$124;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Lorg/light/TextAsset;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerSetWillReadSampleCallback(ILorg/light/callback/AIDLWillReadSampleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$139;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$139;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/callback/AIDLWillReadSampleCallback;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerUpdateComponent(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$132;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$132;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public controllerUpdateResource(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$141;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$141;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public debugUtilsSetImageDebugInfo(ZLjava/lang/String;ZZZZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    iget-object v10, v9, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v11, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$220;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ZLjava/lang/String;ZZZZZ)V

    invoke-static {v10, v11}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightAssetDataContextAddLightAsset(III)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v7, 0x0

    aput-boolean v7, v0, v7

    iget-object v8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v9, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, v0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$108;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II[ZI)V

    invoke-static {v8, v9}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v7

    return p1
.end method

.method public lightAssetDataContextExportEntityTreeJsonString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$111;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$111;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    return-object p1
.end method

.method public lightAssetDataContextExportInputSourcesJsonString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$113;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$113;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    return-object p1
.end method

.method public lightAssetDataContextExportLightAsset(I)Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/LightAsset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$109;

    invoke-direct {v4, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$109;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/LightAsset;)V

    invoke-static {v3, v4}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v1

    if-eqz p1, :cond_0

    .line 2
    new-instance v2, Lorg/light/service/InstanceId;

    aget-object p1, v0, v1

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v2, p1}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v2
.end method

.method public lightAssetDataContextExportPropertiesJsonString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$115;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$115;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    return-object p1
.end method

.method public lightAssetDataContextMake(II)Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/lightAssetKit/LightAssetDataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;

    invoke-direct {v4, p0, p1, v0, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$107;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/lightAssetKit/LightAssetDataContext;I)V

    invoke-static {v3, v4}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v1

    if-eqz p1, :cond_0

    .line 2
    new-instance v2, Lorg/light/service/InstanceId;

    aget-object p1, v0, v1

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v2, p1}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v2
.end method

.method public lightAssetDataContextReplaceEntityTreeJsonString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$110;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$110;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightAssetDataContextReplaceInputSourcesJsonString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$112;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$112;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightAssetDataContextReplacePropertiesJsonString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$114;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$114;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightAssetForbiddenBasicMakeup(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$91;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$91;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetForbiddenBasicNonReshapeBeauty(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$92;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$92;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetForbiddenBasicReshape(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$93;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$93;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetForbiddenBasicSmooth(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$94;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$94;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetGetBgmMusicIDs(I)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$98;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$98;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Ljava/lang/String;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public lightAssetGetBoundsTrackerPlaceHolders(I)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$100;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$100;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Ljava/lang/String;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public lightAssetGetDefaultCameraPosition(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$86;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$86;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v1

    return p1
.end method

.method public lightAssetGetErrorCode(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$103;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$103;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v1

    return p1
.end method

.method public lightAssetGetFontAssets(I)[Lorg/light/FontAsset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/FontAsset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$99;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$99;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/FontAsset;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public lightAssetGetJsonString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ""

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$106;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$106;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    return-object p1
.end method

.method public lightAssetGetLUTPlaceHolders(I)[Lorg/light/LUTPlaceHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/LUTPlaceHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$83;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$83;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/LUTPlaceHolder;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public lightAssetGetMaterialConfigs(I)[Lorg/light/MaterialConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/MaterialConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$102;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$102;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/MaterialConfig;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public lightAssetGetMaterialID(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ""

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$82;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$82;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    return-object p1
.end method

.method public lightAssetGetMovieConfig(I)Lorg/light/TemplateConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/TemplateConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$101;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$101;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/TemplateConfig;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public lightAssetGetRenderAgentBundleInfos(I)[Lorg/light/bean/LightAgentBundleInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/bean/LightAgentBundleInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$81;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$81;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/bean/LightAgentBundleInfo;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public lightAssetGetRenderAgentTypes(I)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$80;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$80;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Ljava/lang/String;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public lightAssetGetSupportCameraPosition(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$87;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$87;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v1

    return p1
.end method

.method public lightAssetGetVoiceEnvironment(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$85;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$85;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v1

    return p1
.end method

.method public lightAssetGetVoiceKind(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$84;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$84;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v1

    return p1
.end method

.method public lightAssetHasFactorMakeup(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$95;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$95;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetHasLut(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$77;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$77;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetHasMakeup(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$90;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$90;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetHasMesh(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$89;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$89;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetHeight(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$97;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$97;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v1

    return p1
.end method

.method public lightAssetLoad(Ljava/lang/String;I)Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/LightAsset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;

    invoke-direct {v4, p0, v0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$76;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/LightAsset;Ljava/lang/String;I)V

    invoke-static {v3, v4}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v1

    if-eqz p1, :cond_0

    .line 2
    new-instance v2, Lorg/light/service/InstanceId;

    aget-object p1, v0, v1

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v2, p1}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v2
.end method

.method public lightAssetLoadFromString(Ljava/lang/String;Ljava/lang/String;I)Lorg/light/service/InstanceId;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/LightAsset;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v0, v7

    .line 1
    iget-object v9, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v10, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$78;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/LightAsset;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v9, v10}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v7

    if-eqz p1, :cond_0

    .line 2
    new-instance v8, Lorg/light/service/InstanceId;

    aget-object p1, v0, v7

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v8, p1}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v8
.end method

.method public lightAssetNeedRenderAbility(ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$79;

    invoke-direct {v3, p0, p1, v0, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$79;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[ZLjava/lang/String;)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetNeedResetAssetWhenStartRecord(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$104;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$104;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetNeedUE4Environment(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$88;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$88;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightAssetPerformFinalize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$105;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$105;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightAssetWidth(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$96;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$96;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v1

    return p1
.end method

.method public lightEngineAudioOutput(I)Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/AudioOutput;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$14;

    invoke-direct {v4, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$14;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/AudioOutput;)V

    invoke-static {v3, v4}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v1

    if-eqz p1, :cond_0

    .line 2
    new-instance v2, Lorg/light/service/InstanceId;

    aget-object p1, v0, v1

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v2, p1}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v2
.end method

.method public lightEngineComponentLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lorg/light/LightEngine;->componentLevel()I

    move-result v0

    return v0
.end method

.method public lightEngineGetOriginTexture(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$189;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$189;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v1

    return p1
.end method

.method public lightEngineGetResultTexture(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$188;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$188;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[I)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v1

    return p1
.end method

.method public lightEngineInit()V
    .locals 2

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$186;

    invoke-direct {v1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$186;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightEngineInitAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v7, 0x0

    aput v7, v0, v7

    iget-object v8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v9, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$185;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v7

    return p1
.end method

.method public lightEngineInitDeviceConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$187;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$187;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$4200(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightEngineIsDeviceAbilitySupported(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lorg/light/LightEngine;->isDeviceAbilitySupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public lightEngineLoadLibraryForSDKService(Landroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lorg/light/service/LightSDKService;->loadSo(Landroid/os/Bundle;)Lorg/light/service/LightSDKService$LoadSOResult;

    move-result-object p1

    sget-object v0, Lorg/light/service/LightSDKService$LoadSOResult;->LoadSuccess:Lorg/light/service/LightSDKService$LoadSOResult;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lightEngineMake(Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)Lorg/light/service/InstanceId;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/LightEngine;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v0, v7

    .line 1
    iget-object v9, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v10, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/LightEngine;Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)V

    invoke-static {v9, v10}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v7

    if-eqz p1, :cond_0

    .line 2
    new-instance v8, Lorg/light/service/InstanceId;

    aget-object p1, v0, v7

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v8, p1}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v8
.end method

.method public lightEngineRelease(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$191;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$191;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightEngineSetAssetForCamera(II)Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/CameraController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;

    invoke-direct {v4, p0, p1, p2, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II[Lorg/light/CameraController;)V

    invoke-static {v3, v4}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v1

    if-eqz p1, :cond_0

    .line 2
    new-instance v2, Lorg/light/service/InstanceId;

    aget-object p1, v0, v1

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v2, p1}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v2
.end method

.method public lightEngineSetAssetForMovie(II)Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/MovieController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$183;

    invoke-direct {v4, p0, p1, p2, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$183;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II[Lorg/light/MovieController;)V

    invoke-static {v3, v4}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v1

    if-eqz p1, :cond_0

    .line 2
    new-instance v2, Lorg/light/service/InstanceId;

    aget-object p1, v0, v1

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v2, p1}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v2
.end method

.method public lightEngineSetConfig(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightEngineSetSurface(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$11;

    invoke-direct {v3, p0, p1, p2, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$11;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II[Z)V

    invoke-static {v2, p2, v3}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public lightEngineSetTemplateAssets(I[Lorg/light/TemplateClip;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;

    invoke-direct {v3, p0, p2, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$190;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/TemplateClip;I[[I)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public lightEngineVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lorg/light/LightEngine;->version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lightEngineVideoOutput(I)Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/VideoOutput;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$13;

    invoke-direct {v4, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$13;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/VideoOutput;)V

    invoke-static {v3, v4}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v1

    if-eqz p1, :cond_0

    .line 2
    new-instance v2, Lorg/light/service/InstanceId;

    aget-object p1, v0, v1

    invoke-direct {p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v2, p1}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v2
.end method

.method public lightLogUtilDestroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$212;

    invoke-direct {v1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$212;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightLogUtilInit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$209;

    invoke-direct {v1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$209;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightLogUtilSetLightLogger(Lorg/light/listener/AIDLILightLogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/listener/AIDLILightLogger;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightLogUtilSetMinPriority(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$211;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$211;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightReportManagerGetShareKey()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$206;

    invoke-direct {v2, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$206;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    return-object v0
.end method

.method public lightReportManagerLaunchFromApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$208;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$208;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightReportManagerReportOutsideData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$205;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$205;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightReportManagerSetCommonParamsExternal(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$207;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$207;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public lightServicePid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public lightSurfaceClearRenderCurrent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$30;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$30;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, p1, v1}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    return-void
.end method

.method public lightSurfaceFreeCache(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$31;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$31;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, p1, v1}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    return-void
.end method

.method public lightSurfaceGetRenderCurrentGLContext(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$3;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$3;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[J)V

    invoke-static {v1, p1, v2}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    aget-wide v1, v0, v3

    return-wide v1
.end method

.method public lightSurfaceMakeFromNativeBuffer(Landroid/hardware/HardwareBuffer;IIZ)Lorg/light/service/InstanceId;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v8, v0, [Lorg/light/service/InstanceId;

    const/4 v1, 0x0

    const/4 v9, 0x0

    aput-object v1, v8, v9

    move-object v10, p0

    iget-object v11, v10, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v12, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;

    move-object v1, v12

    move-object v2, p0

    move v3, p2

    move/from16 v4, p3

    move-object v5, p1

    move/from16 v6, p4

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$27;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IILandroid/hardware/HardwareBuffer;Z[Lorg/light/service/InstanceId;)V

    invoke-static {v11, v12, v0}, Lorg/light/service/LightSDKService;->access$1100(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;Z)V

    aget-object v0, v8, v9

    return-object v0
.end method

.method public lightSurfaceMakeFromSurface(Landroid/view/Surface;Z)Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/light/service/InstanceId;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;

    invoke-direct {v4, p0, p1, p2, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$26;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Landroid/view/Surface;Z[Lorg/light/service/InstanceId;)V

    invoke-static {v2, v4, v0}, Lorg/light/service/LightSDKService;->access$1100(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;Z)V

    aget-object p1, v1, v3

    return-object p1
.end method

.method public lightSurfaceMakeRenderCurrent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$29;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$29;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, p1, v1}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    return-void
.end method

.method public lightSurfaceRelease(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$32;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, p1, v1}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    return-void
.end method

.method public lightSurfaceUpdateSize(ILandroid/hardware/HardwareBuffer;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v7, Lorg/light/service/LightSDKService$LightSDKServiceBinder$28;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$28;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/hardware/HardwareBuffer;II)V

    invoke-static {v0, p1, v7}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    return-void
.end method

.method public movieConfigMake()Lorg/light/service/InstanceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/MovieConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v4, Lorg/light/service/LightSDKService$LightSDKServiceBinder$25;

    invoke-direct {v4, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$25;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/MovieConfig;)V

    invoke-static {v3, v4}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 2
    new-instance v2, Lorg/light/service/InstanceId;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->saveInstance(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {v2, v0}, Lorg/light/service/InstanceId;-><init>(I)V

    :cond_0
    return-object v2
.end method

.method public movieControllerDuration(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$178;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$178;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[J)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-wide v1, v0, v3

    return-wide v1
.end method

.method public movieControllerGetBoundsTrackTimeRanges(I)[Lorg/light/TimeRange;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/TimeRange;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$176;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$176;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/TimeRange;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public movieControllerGetClipInfos(I)[Lorg/light/ClipInfoArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/ClipInfoArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$174;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/ClipInfoArray;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public movieControllerGetClipPlaceHolders(I)[Lorg/light/ClipPlaceHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/ClipPlaceHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$167;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$167;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/ClipPlaceHolder;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public movieControllerGetLUTPlaceHolders(I)[Lorg/light/LUTPlaceHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/LUTPlaceHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$166;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$166;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/LUTPlaceHolder;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public movieControllerGetMediasTotalDurationLimitationStatus(I)Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$170;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$170;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public movieControllerGetOriginVolume(I)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$173;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$173;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[F)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v2

    return p1
.end method

.method public movieControllerGetTextTimeRanges(I)[Lorg/light/TimeRange;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Lorg/light/TimeRange;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$175;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$175;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[[Lorg/light/TimeRange;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public movieControllerHasAudio(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$179;

    invoke-direct {v3, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$179;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean p1, v0, v1

    return p1
.end method

.method public movieControllerRegisterClipSourceFactory(ILorg/light/AIDLClipSourceFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/AIDLClipSourceFactory;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public movieControllerReplaceLUTAsset(ILjava/lang/String;Lorg/light/LUTAsset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$177;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Lorg/light/LUTAsset;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public movieControllerSetClipAssets(ILandroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v7, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$171;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/os/Bundle;Ljava/lang/String;Z)V

    invoke-static {v0, v7}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public movieControllerSetOriginVolume(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$172;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$172;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IF)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public movieControllerSetRenderMediaSize(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$168;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$168;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;III)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public movieControllerSetupMediasTotalDurationLimitationStatus(IZ)V
    .locals 2

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$169;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$169;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IZ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public nativeBufferIsEglFenceEnabled()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$221;

    invoke-direct {v3, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$221;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean v0, v0, v1

    return v0
.end method

.method public nativeBufferSetEglFenceEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$222;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$222;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Z)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public performanceMonitorGetBenchData()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$200;

    invoke-direct {v2, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$200;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    return-object v0
.end method

.method public performanceMonitorGetPerformanceData()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$202;

    invoke-direct {v2, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$202;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    return-object v0
.end method

.method public performanceMonitorSavePerformanceData()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$201;

    invoke-direct {v3, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$201;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean v0, v0, v1

    return v0
.end method

.method public performanceMonitorSetBenchConfig(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$196;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$196;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public performanceMonitorSetBenchConfigWithThreshold(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$197;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$197;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/String;F)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public performanceMonitorSetBenchEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$198;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$198;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Z)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public performanceMonitorSetBenchEnableWithThreshold(ZF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$199;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$199;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ZF)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public performanceMonitorSetPerfEnable(ZZZLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v7, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$204;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ZZZLjava/lang/String;)V

    invoke-static {v0, v7}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public performanceMonitorSetPerformanceRunMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$203;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$203;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSdkInstance(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$192;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$192;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ueUtilCheckUE4Ready()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$10;

    invoke-direct {v3, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$10;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Z)V

    invoke-static {v2, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-boolean v0, v0, v1

    return v0
.end method

.method public ueUtilClearUEFaceStr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$193;

    invoke-direct {v1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$193;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ueUtilCreateUEPlayer(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$195;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$195;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ueUtilInitUEInterface(Lorg/light/listener/AIDLOnBindServiceListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$7;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$7;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/listener/AIDLOnBindServiceListener;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ueUtilInitUENativeFunctions()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$8;

    invoke-direct {v1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$8;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ueUtilSetMultiProc(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$9;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$9;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Z)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ueUtilSetOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$6;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$6;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ueUtilSetUEFaceStr(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$194;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$194;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ueUtilStartUE4(JIILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v8, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$4;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;JIILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    invoke-static {v0, v8}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ueUtilStopUE4()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$5;

    invoke-direct {v1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$5;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public videoOutputReadSample(IIIJJ)Lorg/light/bean/ReadSampleResult;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/bean/ReadSampleResult;

    const/4 v1, 0x0

    const/4 v11, 0x0

    aput-object v1, v0, v11

    move-object v12, p0

    iget-object v13, v12, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v14, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p1

    move-wide/from16 v7, p6

    move-object v9, v0

    move/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IJIJ[Lorg/light/bean/ReadSampleResult;I)V

    move/from16 v1, p2

    invoke-static {v13, v1, v14}, Lorg/light/service/LightSDKService;->access$600(Lorg/light/service/LightSDKService;ILjava/lang/Runnable;)V

    aget-object v0, v0, v11

    return-object v0
.end method

.method public videoOutputRelease(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$117;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$117;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public wmElementConstructor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v7, 0x0

    aput v7, v0, v7

    iget-object v8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v9, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$213;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v7

    return p1
.end method

.method public wmElementDoCheckIn(ILjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v7, 0x0

    aput v7, v0, v7

    iget-object v8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v9, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$214;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget p1, v0, v7

    return p1
.end method

.method public wmElementGetInnerValue(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ""

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$218;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$218;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    aget-object p1, v0, p1

    return-object p1
.end method

.method public wmElementResetCheckIn(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$219;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$219;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public wmElementSetDate(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$217;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$217;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IJ)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public wmElementSetLocation(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$216;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$216;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public wmElementSetText(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$215;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$215;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method
