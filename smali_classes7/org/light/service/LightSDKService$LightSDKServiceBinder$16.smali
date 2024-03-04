.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->cameraConfigUpdateCameraTexture(IILandroid/hardware/HardwareBuffer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$buffer:Landroid/hardware/HardwareBuffer;

.field final synthetic val$cameraConfigInstanceId:I

.field final synthetic val$cameraTexture:I

.field final synthetic val$height:I

.field final synthetic val$lightSurfaceInstanceId:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IIILandroid/hardware/HardwareBuffer;II)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$cameraConfigInstanceId:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$cameraTexture:I

    iput p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$lightSurfaceInstanceId:I

    iput-object p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$buffer:Landroid/hardware/HardwareBuffer;

    iput p6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$width:I

    iput p7, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$700(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$cameraConfigInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$cameraTexture:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$800(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$lightSurfaceInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/NativeBuffer;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/light/NativeBuffer;

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$buffer:Landroid/hardware/HardwareBuffer;

    invoke-direct {v0, v1}, Lorg/light/NativeBuffer;-><init>(Landroid/hardware/HardwareBuffer;)V

    const/16 v1, 0xde1

    .line 4
    invoke-static {v1}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Lorg/light/NativeBuffer;->bindTexture(I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lorg/light/NativeBuffer;->release()V

    .line 8
    new-instance v0, Lorg/light/NativeBuffer;

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$buffer:Landroid/hardware/HardwareBuffer;

    invoke-direct {v0, v2}, Lorg/light/NativeBuffer;-><init>(Landroid/hardware/HardwareBuffer;)V

    .line 9
    invoke-virtual {v0, v1}, Lorg/light/NativeBuffer;->bindTexture(I)Z

    .line 10
    :goto_0
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v1}, Lorg/light/service/LightSDKService;->access$800(Lorg/light/service/LightSDKService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$lightSurfaceInstanceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$cameraConfigInstanceId:I

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/CameraConfig;

    .line 12
    invoke-virtual {v0}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v0

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$width:I

    iget v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$16;->val$height:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/light/CameraConfig;->setCameraTexture(III)V

    return-void
.end method
