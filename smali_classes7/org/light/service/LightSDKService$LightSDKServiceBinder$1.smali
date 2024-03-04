.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder;-><init>(Lorg/light/service/LightSDKService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

.field final synthetic val$lock:Lorg/light/Lock;

.field final synthetic val$this$0:Lorg/light/service/LightSDKService;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder;Lorg/light/service/LightSDKService;Lorg/light/Lock;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$1;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$1;->val$this$0:Lorg/light/service/LightSDKService;

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$1;->val$lock:Lorg/light/Lock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/epicgames/ue4/UE4;->getCurrentEglContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$1;->this$1:Lorg/light/service/LightSDKService$LightSDKServiceBinder;

    iget-object v1, v1, Lorg/light/service/LightSDKService$LightSDKServiceBinder;->this$0:Lorg/light/service/LightSDKService;

    new-instance v2, Lorg/light/gles/EglCore;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lorg/light/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v1, v2}, Lorg/light/service/LightSDKService;->access$102(Lorg/light/service/LightSDKService;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;

    .line 3
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$1;->val$lock:Lorg/light/Lock;

    invoke-virtual {v0}, Lorg/light/Lock;->release()V

    return-void
.end method
