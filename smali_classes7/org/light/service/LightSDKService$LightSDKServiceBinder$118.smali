.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$118;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->audioOutputSeekTo(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$audioOutputInstanceId:I

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IJ)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$118;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$118;->val$audioOutputInstanceId:I

    iput-wide p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$118;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$118;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$118;->val$audioOutputInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/AudioOutput;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$118;->val$time:J

    invoke-virtual {v0, v1, v2}, Lorg/light/AudioOutput;->seekTo(J)V

    :cond_0
    return-void
.end method
