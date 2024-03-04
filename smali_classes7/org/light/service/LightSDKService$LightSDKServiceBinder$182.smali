.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/ClipSourceFactory$AudioReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->aidlCreateAudioReader(Lorg/light/AIDLAudioReader;)Lorg/light/ClipSourceFactory$AudioReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$far:Lorg/light/AIDLAudioReader;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/AIDLAudioReader;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->val$far:Lorg/light/AIDLAudioReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyNextFrame()Lorg/light/AudioFrame;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/AudioFrame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$1;

    invoke-direct {v3, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$1;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;[Lorg/light/AudioFrame;)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object v0, v0, v2

    return-object v0
.end method

.method public copyNextFrameSyncEnable(Z)Lorg/light/AudioFrame;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/light/AudioFrame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v3, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$2;

    invoke-direct {v3, p0, v0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$2;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;[Lorg/light/AudioFrame;Z)V

    invoke-static {v1, v3}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-object p1, v0, v2

    return-object p1
.end method

.method public duration()J
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$5;

    invoke-direct {v2, p0, v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$5;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;[J)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    aget-wide v1, v0, v3

    return-wide v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$6;

    invoke-direct {v1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$6;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public seek(J)V
    .locals 2

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$3;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;J)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v0, v0, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$4;

    invoke-direct {v1, p0, p1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$182$4;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$182;F)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService;->access$400(Lorg/light/service/LightSDKService;Ljava/lang/Runnable;)V

    return-void
.end method
