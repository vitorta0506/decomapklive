.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->cameraConfigSensorOrientationChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$cameraConfigInstanceId:I

.field final synthetic val$whichOrientation:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$20;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$20;->val$cameraConfigInstanceId:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$20;->val$whichOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$20;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$20;->val$cameraConfigInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/CameraConfig;

    .line 2
    invoke-static {}, Lorg/light/CameraConfig$DeviceCameraOrientation;->values()[Lorg/light/CameraConfig$DeviceCameraOrientation;

    move-result-object v1

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$20;->val$whichOrientation:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/light/CameraConfig;->sensorOrientationChanged(Lorg/light/CameraConfig$DeviceCameraOrientation;)V

    return-void
.end method
