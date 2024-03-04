.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->cameraConfigMake()Lorg/light/service/InstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$cameraConfig:[Lorg/light/CameraConfig;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/CameraConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$15;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$15;->val$cameraConfig:[Lorg/light/CameraConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$15;->val$cameraConfig:[Lorg/light/CameraConfig;

    invoke-static {}, Lorg/light/CameraConfig;->make()Lorg/light/CameraConfig;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
