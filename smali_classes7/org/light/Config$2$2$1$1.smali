.class Lorg/light/Config$2$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config$2$2$1;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/light/Config$2$2$1;

.field final synthetic val$surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lorg/light/Config$2$2$1;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$2$2$1$1;->this$3:Lorg/light/Config$2$2$1;

    iput-object p2, p0, Lorg/light/Config$2$2$1$1;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/Config$2$2$1$1;->this$3:Lorg/light/Config$2$2$1;

    iget-object v0, v0, Lorg/light/Config$2$2$1;->this$2:Lorg/light/Config$2$2;

    iget-object v0, v0, Lorg/light/Config$2$2;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1300(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v1, p0, Lorg/light/Config$2$2$1$1;->this$3:Lorg/light/Config$2$2$1;

    iget-object v1, v1, Lorg/light/Config$2$2$1;->this$2:Lorg/light/Config$2$2;

    iget-object v1, v1, Lorg/light/Config$2$2;->this$1:Lorg/light/Config$2;

    invoke-static {v1}, Lorg/light/Config$2;->access$1400(Lorg/light/Config$2;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 2
    iget-object v0, p0, Lorg/light/Config$2$2$1$1;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 3
    iget-object v0, p0, Lorg/light/Config$2$2$1$1;->this$3:Lorg/light/Config$2$2$1;

    iget-object v0, v0, Lorg/light/Config$2$2$1;->this$2:Lorg/light/Config$2$2;

    iget-object v0, v0, Lorg/light/Config$2$2;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$2300(Lorg/light/Config$2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
