.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightEngineSetAssetForCamera(II)Lorg/light/service/InstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$cameraController:[Lorg/light/CameraController;

.field final synthetic val$lightAssetInstanceId:I

.field final synthetic val$lightEngineInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II[Lorg/light/CameraController;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;->val$lightEngineInstanceId:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;->val$lightAssetInstanceId:I

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;->val$cameraController:[Lorg/light/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;->val$lightEngineInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/LightEngine;

    .line 2
    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;->val$lightAssetInstanceId:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-static {v2, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/LightAsset;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$184;->val$cameraController:[Lorg/light/CameraController;

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Lorg/light/LightEngine;->setAssetForCamera(Lorg/light/LightAsset;)Lorg/light/CameraController;

    move-result-object v0

    aput-object v0, v2, v3

    return-void
.end method
