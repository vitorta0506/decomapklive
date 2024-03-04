.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->createOutputSurface(Lorg/light/bean/Texture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

.field final synthetic val$output:Lorg/light/bean/Texture;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;Lorg/light/bean/Texture;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->val$output:Lorg/light/bean/Texture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;

    invoke-static {v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;->access$3800(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2$1;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$40$1$2;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
