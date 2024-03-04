.class final Lorg/light/LightEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/LightEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "LightEngine"

    const-string v0, "onNullBinding()"

    .line 1
    invoke-static {p1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SERVICE_CONNECTION_STATUS_NULL_BINDING"

    .line 2
    invoke-static {p1}, Lorg/light/LightEngine;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Lorg/light/LightEngine;->access$500()Lorg/light/service/SingleLock;

    move-result-object p1

    invoke-virtual {p1}, Lorg/light/service/SingleLock;->release()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "LightEngine"

    const-string v0, "onServiceConnected()"

    .line 1
    invoke-static {p1, v0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/light/LightEngine;->access$300()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call linkToDeath exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-static {p2}, Lorg/light/ILightSDKServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/ILightSDKServiceInterface;

    move-result-object p1

    invoke-static {p1}, Lorg/light/LightEngine;->access$400(Lorg/light/ILightSDKServiceInterface;)V

    const-string p1, "SERVICE_CONNECTION_STATUS_CONNTECTED"

    .line 5
    invoke-static {p1}, Lorg/light/LightEngine;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {}, Lorg/light/LightEngine;->access$500()Lorg/light/service/SingleLock;

    move-result-object p1

    invoke-virtual {p1}, Lorg/light/service/SingleLock;->release()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "LightEngine"

    const-string v0, "onServiceDisconnected()"

    .line 1
    invoke-static {p1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SERVICE_CONNECTION_STATUS_DISCONNTECTED"

    .line 2
    invoke-static {p1}, Lorg/light/LightEngine;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Lorg/light/LightEngine;->access$500()Lorg/light/service/SingleLock;

    move-result-object p1

    invoke-virtual {p1}, Lorg/light/service/SingleLock;->release()V

    return-void
.end method
