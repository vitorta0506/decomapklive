.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$55$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/listener/OnDelegateAgentRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$55;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$55;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$55;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$55$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDelegateAgentRequest(Lorg/light/bean/LightDelegateAgentRequest;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/light/bean/LightDelegateAgentRequest;->putDataToSharedMemory()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_data_:[B

    .line 3
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$55$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$55;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$55;->val$delegateAgentRequestListener:Lorg/light/listener/AIDLOnDelegateAgentRequestListener;

    invoke-interface {v0, p1}, Lorg/light/listener/AIDLOnDelegateAgentRequestListener;->OnDelegateAgentRequest(Lorg/light/bean/LightDelegateAgentRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnDelegateAgentRequest:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightSDKService"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method