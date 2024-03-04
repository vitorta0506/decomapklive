.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$180$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/ClipSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioReader(Ljava/lang/String;)Lorg/light/ClipSourceFactory$AudioReader;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;->val$factory:Lorg/light/AIDLClipSourceFactory;

    invoke-interface {v1, p1}, Lorg/light/AIDLClipSourceFactory;->createAudioReader(Ljava/lang/String;)Lorg/light/AIDLAudioReader;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LightSDKService"

    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-static {v0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$4100(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/AIDLAudioReader;)Lorg/light/ClipSourceFactory$AudioReader;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public createVideoReader(Ljava/lang/String;)Lorg/light/ClipSourceFactory$VideoReader;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;->val$factory:Lorg/light/AIDLClipSourceFactory;

    invoke-interface {v1, p1}, Lorg/light/AIDLClipSourceFactory;->createVideoReader(Ljava/lang/String;)Lorg/light/AIDLVideoReader;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LightSDKService"

    invoke-static {v1, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$180;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    invoke-static {v0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$4000(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/AIDLVideoReader;)Lorg/light/ClipSourceFactory$VideoReader;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method
