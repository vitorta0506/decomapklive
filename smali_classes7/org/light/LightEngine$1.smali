.class final Lorg/light/LightEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
.method public binderDied()V
    .locals 4

    const-string v0, "LightEngine"

    const-string v1, "binderDied"

    .line 1
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/light/LightEngine;->access$000()Lorg/light/ILightSDKServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/light/LightEngine;->access$000()Lorg/light/ILightSDKServiceInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const-string v0, "SERVICE_CONNECTION_STATUS_BINDING_DIED"

    .line 4
    invoke-static {v0}, Lorg/light/LightEngine;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {}, Lorg/light/LightEngine;->access$200()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Lorg/light/LightEngine;->access$200()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/LightEngine$SDKServiceRuntimeErrorCallback;

    if-eqz v2, :cond_1

    const-string v3, "binder died"

    .line 7
    invoke-interface {v2, v3}, Lorg/light/LightEngine$SDKServiceRuntimeErrorCallback;->onServiceRuntimeError(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lorg/light/LightEngine;->access$200()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
