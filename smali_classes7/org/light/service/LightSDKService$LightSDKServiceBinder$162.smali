.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->cameraControllerUpdateViewParams(I[F[FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$bottomMargin:F

.field final synthetic val$cameraControllerInstanceId:I

.field final synthetic val$fullViewSize:[F

.field final synthetic val$modelViewFrame:[F


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[F[FF)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->val$cameraControllerInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->val$fullViewSize:[F

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->val$modelViewFrame:[F

    iput p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->val$bottomMargin:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->val$cameraControllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/CameraController;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->val$fullViewSize:[F

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->val$modelViewFrame:[F

    iget v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$162;->val$bottomMargin:F

    invoke-virtual {v0, v1, v2, v3}, Lorg/light/CameraController;->updateViewParams([F[FF)V

    return-void
.end method
