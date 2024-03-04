.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->configSetAIDataListener(ILorg/light/listener/AIDLOnAIDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$aiDataListener:Lorg/light/listener/AIDLOnAIDataListener;

.field final synthetic val$configInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/listener/AIDLOnAIDataListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;->val$configInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;->val$aiDataListener:Lorg/light/listener/AIDLOnAIDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;->val$configInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Config;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;->val$aiDataListener:Lorg/light/listener/AIDLOnAIDataListener;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53$1;

    invoke-direct {v1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$53$1;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$53;)V

    :goto_0
    invoke-virtual {v0, v1}, Lorg/light/Config;->setAIDataListener(Lorg/light/listener/OnAIDataListener;)V

    return-void
.end method
