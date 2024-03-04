.class Lorg/light/service/LightSDKService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/service/LightSDKService;->runTask(Ljava/lang/Runnable;ZLandroid/opengl/EGLSurface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/service/LightSDKService;

.field final synthetic val$finalLock:Lorg/light/Lock;

.field final synthetic val$surface:Landroid/opengl/EGLSurface;

.field final synthetic val$sync:Z

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/light/service/LightSDKService;Landroid/opengl/EGLSurface;Ljava/lang/Runnable;ZLorg/light/Lock;)V
    .locals 0

    iput-object p1, p0, Lorg/light/service/LightSDKService$1;->this$0:Lorg/light/service/LightSDKService;

    iput-object p2, p0, Lorg/light/service/LightSDKService$1;->val$surface:Landroid/opengl/EGLSurface;

    iput-object p3, p0, Lorg/light/service/LightSDKService$1;->val$task:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lorg/light/service/LightSDKService$1;->val$sync:Z

    iput-object p5, p0, Lorg/light/service/LightSDKService$1;->val$finalLock:Lorg/light/Lock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$1;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/light/service/LightSDKService$1;->val$surface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/light/service/LightSDKService$1;->this$0:Lorg/light/service/LightSDKService;

    invoke-static {v0}, Lorg/light/service/LightSDKService;->access$100(Lorg/light/service/LightSDKService;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v1, p0, Lorg/light/service/LightSDKService$1;->val$surface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/light/service/LightSDKService$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runTask Exception:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightSDKService"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Lorg/light/service/LightSDKService$1;->val$sync:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/light/service/LightSDKService$1;->val$finalLock:Lorg/light/Lock;

    invoke-virtual {v0}, Lorg/light/Lock;->release()V

    :cond_1
    return-void
.end method
