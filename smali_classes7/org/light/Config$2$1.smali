.class Lorg/light/Config$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config$2;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/Config$2;

.field final synthetic val$lock:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/light/Config$2;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    iput-object p2, p0, Lorg/light/Config$2$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1300(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1300(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v2, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v2}, Lorg/light/Config$2;->access$1400(Lorg/light/Config$2;)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 3
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1500(Lorg/light/Config$2;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 4
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1600(Lorg/light/Config$2;)I

    move-result v0

    invoke-static {v0}, Lorg/light/utils/LightGLUtils;->deleteTexture(I)V

    .line 5
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1700(Lorg/light/Config$2;)I

    move-result v0

    invoke-static {v0}, Lorg/light/utils/LightGLUtils;->deleteTexture(I)V

    .line 6
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1800(Lorg/light/Config$2;)Lorg/light/utils/OESTextureConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1800(Lorg/light/Config$2;)Lorg/light/utils/OESTextureConverter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/utils/OESTextureConverter;->release()V

    .line 8
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0, v1}, Lorg/light/Config$2;->access$1802(Lorg/light/Config$2;Lorg/light/utils/OESTextureConverter;)Lorg/light/utils/OESTextureConverter;

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1300(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/gles/EglCore;->makeNothingCurrent()V

    .line 10
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1300(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v2, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v2}, Lorg/light/Config$2;->access$1400(Lorg/light/Config$2;)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/light/gles/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 11
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1300(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/gles/EglCore;->release()V

    .line 12
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0, v1}, Lorg/light/Config$2;->access$1302(Lorg/light/Config$2;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;

    .line 13
    :cond_1
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1900(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1900(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v2, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v2}, Lorg/light/Config$2;->access$2000(Lorg/light/Config$2;)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 15
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$2100(Lorg/light/Config$2;)Lorg/light/utils/SimpleRenderer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$2100(Lorg/light/Config$2;)Lorg/light/utils/SimpleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/utils/SimpleRenderer;->release()V

    .line 17
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0, v1}, Lorg/light/Config$2;->access$2102(Lorg/light/Config$2;Lorg/light/utils/SimpleRenderer;)Lorg/light/utils/SimpleRenderer;

    .line 18
    :cond_2
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1900(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/gles/EglCore;->makeNothingCurrent()V

    .line 19
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1900(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v2, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v2}, Lorg/light/Config$2;->access$2000(Lorg/light/Config$2;)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/light/gles/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 20
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$1900(Lorg/light/Config$2;)Lorg/light/gles/EglCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/gles/EglCore;->release()V

    .line 21
    iget-object v0, p0, Lorg/light/Config$2$1;->this$1:Lorg/light/Config$2;

    invoke-static {v0, v1}, Lorg/light/Config$2;->access$1902(Lorg/light/Config$2;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;

    .line 22
    :cond_3
    iget-object v0, p0, Lorg/light/Config$2$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
