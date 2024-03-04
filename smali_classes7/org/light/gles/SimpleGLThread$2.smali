.class Lorg/light/gles/SimpleGLThread$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/gles/SimpleGLThread;->destroy(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/gles/SimpleGLThread;

.field final synthetic val$clearRunable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/light/gles/SimpleGLThread;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/light/gles/SimpleGLThread$2;->this$0:Lorg/light/gles/SimpleGLThread;

    iput-object p2, p0, Lorg/light/gles/SimpleGLThread$2;->val$clearRunable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$2;->val$clearRunable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$2;->this$0:Lorg/light/gles/SimpleGLThread;

    invoke-static {v0}, Lorg/light/gles/SimpleGLThread;->access$000(Lorg/light/gles/SimpleGLThread;)Lorg/light/gles/EglCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$2;->this$0:Lorg/light/gles/SimpleGLThread;

    invoke-static {v0}, Lorg/light/gles/SimpleGLThread;->access$100(Lorg/light/gles/SimpleGLThread;)Lorg/light/gles/OffscreenSurface;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/gles/OffscreenSurface;->release()V

    .line 5
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$2;->this$0:Lorg/light/gles/SimpleGLThread;

    invoke-static {v0}, Lorg/light/gles/SimpleGLThread;->access$000(Lorg/light/gles/SimpleGLThread;)Lorg/light/gles/EglCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/gles/EglCore;->release()V

    .line 6
    iget-object v0, p0, Lorg/light/gles/SimpleGLThread$2;->this$0:Lorg/light/gles/SimpleGLThread;

    invoke-static {v0}, Lorg/light/gles/SimpleGLThread;->access$200(Lorg/light/gles/SimpleGLThread;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :cond_1
    return-void
.end method
