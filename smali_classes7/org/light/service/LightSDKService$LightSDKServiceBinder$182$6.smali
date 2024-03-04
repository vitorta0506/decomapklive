.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$6;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$6;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->val$far:Lorg/light/AIDLAudioReader;

    invoke-interface {v0}, Lorg/light/AIDLAudioReader;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightSDKService"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
