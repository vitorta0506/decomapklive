.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->configSetDelegateAgentResult(ILorg/light/bean/LightDelegateAgentRequest;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$configInstanceId:I

.field final synthetic val$jsonString:Ljava/lang/String;

.field final synthetic val$request:Lorg/light/bean/LightDelegateAgentRequest;

.field final synthetic val$succeeded:Z


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/bean/LightDelegateAgentRequest;IZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->val$request:Lorg/light/bean/LightDelegateAgentRequest;

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->val$configInstanceId:I

    iput-boolean p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->val$succeeded:Z

    iput-object p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->val$jsonString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->val$request:Lorg/light/bean/LightDelegateAgentRequest;

    invoke-virtual {v0}, Lorg/light/bean/LightDelegateAgentRequest;->getDataFromSharedMemory()V

    .line 2
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->val$configInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Config;

    .line 3
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->val$request:Lorg/light/bean/LightDelegateAgentRequest;

    iget-boolean v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->val$succeeded:Z

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$56;->val$jsonString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/light/Config;->setDelegateAgentResult(Lorg/light/bean/LightDelegateAgentRequest;ZLjava/lang/String;)V

    return-void
.end method
