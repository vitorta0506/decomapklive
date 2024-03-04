.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->cameraConfigSetCameraTexture(IIIILandroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$cameraConfigInstanceId:I

.field final synthetic val$height:I

.field final synthetic val$lightSurfaceInstanceId:I

.field final synthetic val$pfd:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILandroid/os/ParcelFileDescriptor;III)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$lightSurfaceInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$pfd:Landroid/os/ParcelFileDescriptor;

    iput p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$cameraConfigInstanceId:I

    iput p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$width:I

    iput p6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$800(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$lightSurfaceInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/NativeBuffer;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lorg/light/NativeBuffer;->waitFence(Landroid/os/ParcelFileDescriptor;)Z

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCameraTexture close fence FD Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightSDKService"

    invoke-static {v2, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$cameraConfigInstanceId:I

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/CameraConfig;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v0

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$width:I

    iget v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$17;->val$height:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/light/CameraConfig;->setCameraTexture(III)V

    :cond_2
    return-void
.end method
