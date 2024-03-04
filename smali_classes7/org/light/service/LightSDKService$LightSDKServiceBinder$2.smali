.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightEngineMake(Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)Lorg/light/service/InstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$audioOutputConfig:Lorg/light/AudioOutputConfig;

.field final synthetic val$lightEngine:[Lorg/light/LightEngine;

.field final synthetic val$rendererConfig:Lorg/light/RendererConfig;

.field final synthetic val$videoOutputConfig:Lorg/light/VideoOutputConfig;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;[Lorg/light/LightEngine;Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;->val$lightEngine:[Lorg/light/LightEngine;

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;->val$videoOutputConfig:Lorg/light/VideoOutputConfig;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;->val$audioOutputConfig:Lorg/light/AudioOutputConfig;

    iput-object p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;->val$rendererConfig:Lorg/light/RendererConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;->val$lightEngine:[Lorg/light/LightEngine;

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;->val$videoOutputConfig:Lorg/light/VideoOutputConfig;

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;->val$audioOutputConfig:Lorg/light/AudioOutputConfig;

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$2;->val$rendererConfig:Lorg/light/RendererConfig;

    invoke-static {v1, v2, v3}, Lorg/light/LightEngine;->make(Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)Lorg/light/LightEngine;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
