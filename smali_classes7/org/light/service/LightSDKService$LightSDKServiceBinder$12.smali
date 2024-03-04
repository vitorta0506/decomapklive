.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->lightEngineSetConfig(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$configInstanceId:I

.field final synthetic val$lightEngineInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;II)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;->val$lightEngineInstanceId:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;->val$configInstanceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;->val$lightEngineInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/LightEngine;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$12;->val$configInstanceId:I

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/Config;

    .line 3
    invoke-virtual {v0, v1}, Lorg/light/LightEngine;->setConfig(Lorg/light/Config;)V

    return-void
.end method
