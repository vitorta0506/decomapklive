.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$52$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/listener/OnLoadAssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$52$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAssetDurationChange(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$52$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;->val$loadAssetListener:Lorg/light/listener/AIDLOnLoadAssetListener;

    invoke-interface {v0, p1, p2}, Lorg/light/listener/AIDLOnLoadAssetListener;->OnAssetDurationChange(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LightSDKService"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public OnAssetProcessing(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$52$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;->val$loadAssetListener:Lorg/light/listener/AIDLOnLoadAssetListener;

    invoke-static {p1}, Lorg/light/utils/LightDataUtils;->map2Bundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/light/listener/AIDLOnLoadAssetListener;->OnAssetProcessing(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightSDKService"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public OnLoadAssetError(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$52$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$52;->val$loadAssetListener:Lorg/light/listener/AIDLOnLoadAssetListener;

    invoke-interface {v0, p1}, Lorg/light/listener/AIDLOnLoadAssetListener;->OnLoadAssetError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightSDKService"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
