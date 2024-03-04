.class Lorg/light/gles/SimpleGLThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/gles/SimpleGLThread;-><init>(Landroid/opengl/EGLContext;Ljava/lang/String;Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/gles/SimpleGLThread;

.field final synthetic val$listener:Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;

.field final synthetic val$shareContext:Landroid/opengl/EGLContext;


# direct methods
.method constructor <init>(Lorg/light/gles/SimpleGLThread;Landroid/opengl/EGLContext;Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/gles/SimpleGLThread$1;->this$0:Lorg/light/gles/SimpleGLThread;

    iput-object p2, p0, Lorg/light/gles/SimpleGLThread$1;->val$shareContext:Landroid/opengl/EGLContext;

    iput-object p3, p0, Lorg/light/gles/SimpleGLThread$1;->val$listener:Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$1;->this$0:Lorg/light/gles/SimpleGLThread;

    new-instance v1, Lorg/light/gles/EglCore;

    iget-object v2, p0, Lorg/light/gles/SimpleGLThread$1;->val$shareContext:Landroid/opengl/EGLContext;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/light/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v0, v1}, Lorg/light/gles/SimpleGLThread;->access$002(Lorg/light/gles/SimpleGLThread;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$1;->this$0:Lorg/light/gles/SimpleGLThread;

    new-instance v1, Lorg/light/gles/OffscreenSurface;

    iget-object v2, p0, Lorg/light/gles/SimpleGLThread$1;->this$0:Lorg/light/gles/SimpleGLThread;

    invoke-static {v2}, Lorg/light/gles/SimpleGLThread;->access$000(Lorg/light/gles/SimpleGLThread;)Lorg/light/gles/EglCore;

    move-result-object v2

    const/16 v3, 0x2d0

    const/16 v4, 0x3c0

    invoke-direct {v1, v2, v3, v4}, Lorg/light/gles/OffscreenSurface;-><init>(Lorg/light/gles/EglCore;II)V

    invoke-static {v0, v1}, Lorg/light/gles/SimpleGLThread;->access$102(Lorg/light/gles/SimpleGLThread;Lorg/light/gles/OffscreenSurface;)Lorg/light/gles/OffscreenSurface;

    .line 3
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$1;->this$0:Lorg/light/gles/SimpleGLThread;

    invoke-static {v0}, Lorg/light/gles/SimpleGLThread;->access$100(Lorg/light/gles/SimpleGLThread;)Lorg/light/gles/OffscreenSurface;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/gles/OffscreenSurface;->makeCurrent()V

    .line 4
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$1;->val$listener:Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lorg/light/gles/SimpleGLThread$1;->this$0:Lorg/light/gles/SimpleGLThread;

    invoke-static {v1}, Lorg/light/gles/SimpleGLThread;->access$100(Lorg/light/gles/SimpleGLThread;)Lorg/light/gles/OffscreenSurface;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/light/gles/SimpleGLThread$OnSurfaceCreatedListener;->onSurfaceCreated(Lorg/light/gles/OffscreenSurface;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new EglCore crash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleGLThread"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$1;->this$0:Lorg/light/gles/SimpleGLThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/light/gles/SimpleGLThread;->access$002(Lorg/light/gles/SimpleGLThread;Lorg/light/gles/EglCore;)Lorg/light/gles/EglCore;

    return-void
.end method
