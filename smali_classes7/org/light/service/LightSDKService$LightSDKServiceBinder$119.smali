.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->audioOutputCopyNextSampleSyncEnable(IZ)Lorg/light/AudioFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$audioFrame:[Lorg/light/AudioFrame;

.field final synthetic val$audioOutputInstanceId:I

.field final synthetic val$syncEnable:Z


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I[Lorg/light/AudioFrame;Z)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;->val$audioOutputInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;->val$audioFrame:[Lorg/light/AudioFrame;

    iput-boolean p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;->val$syncEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;->val$audioOutputInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/AudioOutput;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;->val$audioFrame:[Lorg/light/AudioFrame;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$119;->val$syncEnable:Z

    invoke-virtual {v0, v3}, Lorg/light/AudioOutput;->copyNextSampleSyncEnable(Z)Lorg/light/AudioFrame;

    move-result-object v0

    aput-object v0, v1, v2

    :cond_0
    return-void
.end method
