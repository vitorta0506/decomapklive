.class Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;->onRender(Lorg/light/bean/Texture;Ljava/lang/String;Ljava/lang/String;Lorg/light/bean/Texture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;

.field final synthetic val$finalOutput:Lorg/light/bean/Texture;

.field final synthetic val$lock:Lorg/light/Lock;

.field final synthetic val$oldEGLContext:Landroid/opengl/EGLContext;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;Landroid/opengl/EGLContext;Lorg/light/bean/Texture;Lorg/light/Lock;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;

    iput-object p2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->val$oldEGLContext:Landroid/opengl/EGLContext;

    iput-object p3, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->val$finalOutput:Lorg/light/bean/Texture;

    iput-object p4, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->val$lock:Lorg/light/Lock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;

    new-instance v1, Lorg/light/gles/EglCore;

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->val$oldEGLContext:Landroid/opengl/EGLContext;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/light/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;->access$1402(Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;

    .line 2
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;

    invoke-static {v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;->access$1400(Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;)Lorg/light/gles/EglCore;

    move-result-object v1

    iget-object v2, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->val$finalOutput:Lorg/light/bean/Texture;

    iget v3, v2, Lorg/light/bean/Texture;->width:I

    iget v2, v2, Lorg/light/bean/Texture;->height:I

    invoke-virtual {v1, v3, v2}, Lorg/light/gles/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;->access$1502(Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;Landroid/opengl/EGLSurface;)Landroid/opengl/EGLSurface;

    .line 3
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;

    invoke-static {v0}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;->access$1400(Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;

    invoke-static {v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;->access$1500(Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 4
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;

    const v1, 0x8d65

    invoke-static {v1}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;->access$1702(Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;I)I

    .line 5
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->this$3:Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;

    iget-object v1, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->val$finalOutput:Lorg/light/bean/Texture;

    invoke-static {v0, v1}, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;->access$2600(Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1;Lorg/light/bean/Texture;)V

    .line 6
    iget-object v0, p0, Lorg/light/service/LightSDKService$LightSDKServiceBinder$39$1$3;->val$lock:Lorg/light/Lock;

    invoke-virtual {v0}, Lorg/light/Lock;->release()V

    return-void
.end method
