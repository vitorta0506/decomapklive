.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/utils/ILightLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->val$logger:Lorg/light/listener/AIDLILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/listener/AIDLILightLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-static {p2, p1}, Lorg/light/service/LightSDKService$SDKServiceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->val$logger:Lorg/light/listener/AIDLILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/listener/AIDLILightLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-static {p2, p1}, Lorg/light/service/LightSDKService$SDKServiceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->val$logger:Lorg/light/listener/AIDLILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/listener/AIDLILightLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-static {p2, p1}, Lorg/light/service/LightSDKService$SDKServiceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->val$logger:Lorg/light/listener/AIDLILightLogger;

    invoke-interface {v0, p1, p2, p3}, Lorg/light/listener/AIDLILightLogger;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LightSDKService"

    invoke-static {p2, p1}, Lorg/light/service/LightSDKService$SDKServiceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->val$logger:Lorg/light/listener/AIDLILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/listener/AIDLILightLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-static {p2, p1}, Lorg/light/service/LightSDKService$SDKServiceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$210;->val$logger:Lorg/light/listener/AIDLILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/listener/AIDLILightLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-static {p2, p1}, Lorg/light/service/LightSDKService$SDKServiceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
