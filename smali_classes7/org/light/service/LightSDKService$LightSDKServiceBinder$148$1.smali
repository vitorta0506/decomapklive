.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$148$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/IExternalAudioProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$148;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$148;

.field final synthetic val$aidlProcessor:Lorg/light/AIDLIExternalAudioProcessor;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$148;Lorg/light/AIDLIExternalAudioProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$148$1;->this$2:Lorg/light/service/LightSDKService$LightSDKServiceBinder$148;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$148$1;->val$aidlProcessor:Lorg/light/AIDLIExternalAudioProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lorg/light/AudioFrame;)Lorg/light/AudioFrame;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$148$1;->val$aidlProcessor:Lorg/light/AIDLIExternalAudioProcessor;

    invoke-interface {v0, p1, p2}, Lorg/light/AIDLIExternalAudioProcessor;->process(Ljava/lang/String;Lorg/light/AudioFrame;)Lorg/light/AudioFrame;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

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

    const/4 p1, 0x0

    return-object p1
.end method
