.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;->controllerSetComponentUpdateCallback(ILorg/light/callback/AIDLComponentUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$callback:Lorg/light/callback/AIDLComponentUpdateCallback;

.field final synthetic val$controllerInstanceId:I


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;ILorg/light/callback/AIDLComponentUpdateCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;->val$controllerInstanceId:I

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;->val$callback:Lorg/light/callback/AIDLComponentUpdateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;->val$controllerInstanceId:I

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->access$500(Lorg/light/service/LightSDKService$LightSDKServiceBinder;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/Controller;

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;->val$callback:Lorg/light/callback/AIDLComponentUpdateCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136$1;

    invoke-direct {v1, p0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$136$1;-><init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$136;)V

    :goto_0
    invoke-virtual {v0, v1}, Lorg/light/Controller;->setComponentUpdateCallback(Lorg/light/callback/ComponentUpdateCallback;)V

    return-void
.end method
