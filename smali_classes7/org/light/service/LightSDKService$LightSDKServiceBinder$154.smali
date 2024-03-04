.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$154;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->cameraControllerUpdateTouchScale(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$cameraControllerInstanceId:I

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IF)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$154;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$154;->val$cameraControllerInstanceId:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$154;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$154;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$154;->val$cameraControllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/CameraController;

    .line 2
    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$154;->val$scale:F

    invoke-virtual {v0, v1}, Lorg/light/CameraController;->updateTouchScale(F)V

    return-void
.end method
