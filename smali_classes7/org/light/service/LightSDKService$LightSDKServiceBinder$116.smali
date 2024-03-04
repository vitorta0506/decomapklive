.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->videoOutputReadSample(IIIJJ)Lorg/light/bean/ReadSampleResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$cameraControllerInstanceId:I

.field final synthetic val$cameraTextureTimestamp:J

.field final synthetic val$lightSurfaceInstanceId:I

.field final synthetic val$ret:[Lorg/light/bean/ReadSampleResult;

.field final synthetic val$targetTime:J

.field final synthetic val$videoOutputInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IJIJ[Lorg/light/bean/ReadSampleResult;I)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$cameraControllerInstanceId:I

    iput-wide p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$cameraTextureTimestamp:J

    iput p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$videoOutputInstanceId:I

    iput-wide p6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$targetTime:J

    iput-object p8, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$ret:[Lorg/light/bean/ReadSampleResult;

    iput p9, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$lightSurfaceInstanceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$cameraControllerInstanceId:I

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$cameraTextureTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-static {v1, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/CameraController;

    if-eqz v0, :cond_0

    .line 3
    iget-wide v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$cameraTextureTimestamp:J

    invoke-virtual {v0, v1, v2}, Lorg/light/CameraController;->updateCameraTextureTimestamp(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$videoOutputInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/VideoOutput;

    .line 5
    iget-wide v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$targetTime:J

    invoke-virtual {v0, v1, v2}, Lorg/light/VideoOutput;->readSample(J)Z

    move-result v0

    .line 6
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$ret:[Lorg/light/bean/ReadSampleResult;

    new-instance v2, Lorg/light/bean/ReadSampleResult;

    invoke-direct {v2, v0}, Lorg/light/bean/ReadSampleResult;-><init>(Z)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    .line 7
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$1200(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$lightSurfaceInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/NativeBuffer;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$116;->val$ret:[Lorg/light/bean/ReadSampleResult;

    aget-object v0, v2, v0

    invoke-virtual {v1}, Lorg/light/NativeBuffer;->createFence()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lorg/light/bean/ReadSampleResult;->fenceFd:Landroid/os/ParcelFileDescriptor;

    :cond_1
    return-void
.end method
