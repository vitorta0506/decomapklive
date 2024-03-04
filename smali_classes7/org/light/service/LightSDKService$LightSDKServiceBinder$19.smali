.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->cameraConfigSetRawInputForAR(I[BIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$cameraConfigInstanceId:I

.field final synthetic val$external_data:[B

.field final synthetic val$height:I

.field final synthetic val$timestamp:J

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[BIIJ)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$cameraConfigInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$external_data:[B

    iput p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$width:I

    iput p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$height:I

    iput-wide p6, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$cameraConfigInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/light/CameraConfig;

    .line 2
    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$external_data:[B

    iget v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$width:I

    iget v4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$height:I

    iget-wide v5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$19;->val$timestamp:J

    invoke-virtual/range {v1 .. v6}, Lorg/light/CameraConfig;->setRawInputForAR([BIIJ)V

    return-void
.end method
