.class Lorg/light/Config$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config$1;->afterRender(Lorg/light/bean/Texture;Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/Config$1;

.field final synthetic val$output:Lorg/light/bean/Texture;

.field final synthetic val$outputSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lorg/light/Config$1;Landroid/view/Surface;Lorg/light/bean/Texture;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    iput-object p2, p0, Lorg/light/Config$1$4;->val$outputSurface:Landroid/view/Surface;

    iput-object p3, p0, Lorg/light/Config$1$4;->val$output:Lorg/light/bean/Texture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$600(Lorg/light/Config$1;)Lorg/light/gles/EglCore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    new-instance v1, Lorg/light/gles/EglCore;

    iget-object v2, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v2}, Lorg/light/Config$1;->access$000(Lorg/light/Config$1;)Lorg/light/gles/EglCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/light/gles/EglCore;->getEGLContext()Landroid/opengl/EGLContext;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/light/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v0, v1}, Lorg/light/Config$1;->access$602(Lorg/light/Config$1;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$700(Lorg/light/Config$1;)Landroid/opengl/EGLSurface;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$600(Lorg/light/Config$1;)Lorg/light/gles/EglCore;

    move-result-object v1

    iget-object v2, p0, Lorg/light/Config$1$4;->val$outputSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lorg/light/gles/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/Config$1;->access$702(Lorg/light/Config$1;Landroid/opengl/EGLSurface;)Landroid/opengl/EGLSurface;

    :cond_1
    const v0, 0x9117

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glFenceSync(II)J

    move-result-wide v2

    .line 6
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 7
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$600(Lorg/light/Config$1;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v4, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v4}, Lorg/light/Config$1;->access$700(Lorg/light/Config$1;)Landroid/opengl/EGLSurface;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 8
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$800(Lorg/light/Config$1;)Lorg/light/utils/SimpleRenderer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    new-instance v4, Lorg/light/utils/SimpleRenderer;

    invoke-direct {v4}, Lorg/light/utils/SimpleRenderer;-><init>()V

    invoke-static {v0, v4}, Lorg/light/Config$1;->access$802(Lorg/light/Config$1;Lorg/light/utils/SimpleRenderer;)Lorg/light/utils/SimpleRenderer;

    :cond_2
    const-wide/16 v4, -0x1

    .line 10
    invoke-static {v2, v3, v1, v4, v5}, Landroid/opengl/GLES30;->glWaitSync(JIJ)V

    .line 11
    invoke-static {v2, v3}, Landroid/opengl/GLES30;->glDeleteSync(J)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    invoke-static {v0, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 13
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 14
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$800(Lorg/light/Config$1;)Lorg/light/utils/SimpleRenderer;

    move-result-object v0

    iget-object v2, p0, Lorg/light/Config$1$4;->val$output:Lorg/light/bean/Texture;

    iget v3, v2, Lorg/light/bean/Texture;->id:I

    iget v4, v2, Lorg/light/bean/Texture;->width:I

    iget v2, v2, Lorg/light/bean/Texture;->height:I

    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/light/utils/SimpleRenderer;->draw(IIII)V

    .line 15
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$600(Lorg/light/Config$1;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v1, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v1}, Lorg/light/Config$1;->access$700(Lorg/light/Config$1;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/light/gles/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    .line 16
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$000(Lorg/light/Config$1;)Lorg/light/gles/EglCore;

    move-result-object v0

    iget-object v1, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v1}, Lorg/light/Config$1;->access$100(Lorg/light/Config$1;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/light/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 17
    iget-object v0, p0, Lorg/light/Config$1$4;->this$1:Lorg/light/Config$1;

    invoke-static {v0}, Lorg/light/Config$1;->access$1200(Lorg/light/Config$1;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
