.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->controllerAddEntity(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$childIndex:I

.field final synthetic val$controllerInstanceId:I

.field final synthetic val$entityJson:Ljava/lang/String;

.field final synthetic val$parentId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;IIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->val$controllerInstanceId:I

    iput p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->val$parentId:I

    iput p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->val$childIndex:I

    iput-object p5, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->val$entityJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->val$controllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Controller;

    .line 2
    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->val$parentId:I

    iget v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->val$childIndex:I

    iget-object v3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$142;->val$entityJson:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/light/Controller;->addEntity(IILjava/lang/String;)V

    return-void
.end method
