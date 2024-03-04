.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->configSetWatermarkDataListener(ILjava/lang/String;Lorg/light/listener/AIDLOnWatermarkDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$configInstanceId:I

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lorg/light/listener/AIDLOnWatermarkDataListener;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILjava/lang/String;Lorg/light/listener/AIDLOnWatermarkDataListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;->val$configInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;->val$listener:Lorg/light/listener/AIDLOnWatermarkDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;->val$configInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Config;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;->val$listener:Lorg/light/listener/AIDLOnWatermarkDataListener;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50$1;

    invoke-direct {v2, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$50$1;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$50;)V

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/light/Config;->setWatermarkDataListener(Ljava/lang/String;Lorg/light/listener/OnWatermarkDataListener;)V

    return-void
.end method
